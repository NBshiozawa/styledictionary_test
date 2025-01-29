import fs from 'fs';

const tokens = JSON.parse(fs.readFileSync('tokens/sd-tokens.json', 'utf-8'));

// iOS xcassetsカラー用のディレクトリとファイルの出力設定
function generateColorFiles(colorTokens, parentKey = '') {
  if (!colorTokens || typeof colorTokens !== 'object') {
    throw new Error('無効なトークンオブジェクトです');
  }

  return Object.keys(colorTokens).flatMap((key) => {
    const tokenPath = parentKey ? `${parentKey}${key}` : key;
    if (Object.hasOwn(colorTokens[key], 'value')) {
      return {
        destination: `${tokenPath}.colorset/Contents.json`,
        format: 'colorset',
        // filterで一致したカラーのみをContents.jsonとして出力
        filter: (token) => token.path.join('') === `Color${tokenPath}`, // token.path → [ 'Color', 'Surface', 'Brand', 'Subtle' ],
      };
    } else {
      return generateColorFiles(colorTokens[key], tokenPath);
    }
  });
}

export default {
  source: ['tokens/sd-tokens.json'],
  platforms: {
    ios: {
      transformGroup: 'ios-swift',
      buildPath: 'build/ios/',
      files: [
        {
          destination: 'Colors.swift',
          format: 'ios-swift/class.swift',
          filter: 'semantic-filter',
          options: {
            className: 'SdColors',
            accessControl: 'internal',
          },
        },
      ],
    },
    assets: {
      buildPath: 'build/SdColors.xcassets/',
      files: [...generateColorFiles(tokens.Color)],
    },
    android: {
      transformGroup: 'android',
      buildPath: 'build/android/',
      files: [
        {
          destination: 'colors.xml',
          format: 'android/colors',
          filter: 'semantic-filter',
        },
      ],
    },
    css: {
      transformGroup: 'css',
      buildPath: 'build/css/',
      files: [
        {
          destination: '_variables.css',
          format: 'css/variables',
          filter: 'semantic-filter',
        },
      ],
    },
  },
};

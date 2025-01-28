import StyleDictionary from 'style-dictionary';

// Semantic生成用フィルタ
StyleDictionary.registerFilter({
  name: 'semantic-filter',
  filter: (token) => !token.path.includes('Primitive') && token.path[0] !== 'tokenSetOrder',
});

// iOS xcassetsカラー用のカスタムフォーマット
StyleDictionary.registerFormat({
  name: 'colorset',
  format: function ({ dictionary }) {
    // Contents.json の基本構造
    const colorSet = {
      colors: [],
      info: {
        author: "xcode",
        version: 1,
      },
      properties: {
        localizable: true,
      },
    };
    
    // dictionary.allTokens ですべてのトークンを配列化
    dictionary.allTokens.forEach((token) => {
      const colorValue = token.value; // HEX値を取得
      const rgba = hexToRgba(colorValue); // HEX値をRGBaに変換
      
      // トークンの形式を作成
      const colorData = {
        color: {
          "color-space": "srgb",
          components: {
            alpha: rgba.alpha.toFixed(3),
            red: rgba.red.toFixed(3),
            green: rgba.green.toFixed(3),
            blue: rgba.blue.toFixed(3)
          },
        },
        idiom: "universal",
      };
      
      colorSet.colors.push(colorData);

    });
    
    return JSON.stringify(colorSet, null, 2);

  },
});

// HEX値をRGBaに変換する関数
function hexToRgba(hex) {
  hex = hex.replace(/^#/, '');
  
  if ( hex.length === 6 || hex.length === 8 ) {
    const r = parseInt(hex.slice(0, 2), 16) / 255;
    const g = parseInt(hex.slice(2, 4), 16) / 255;
    const b = parseInt(hex.slice(4, 6), 16) / 255;
    const a = hex.length === 8 ? parseInt(hex.slice(6, 8), 16) / 255 : 1;
    
    return {
      red: r,
      green: g,
      blue: b,
      alpha: a
    };
  };
};

const sd = new StyleDictionary('config.js');

await sd.cleanAllPlatforms();
await sd.buildAllPlatforms();

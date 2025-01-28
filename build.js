import StyleDictionary from 'style-dictionary';
import { processColorTokens } from './utils/buildUtils.js';

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
    const baseColorSet = {
      colors: [],
      info: {
        author: 'xcode',
        version: 1,
      },
      properties: {
        localizable: true,
      },
    };
    // dictionary.allTokens ですべてのトークンを配列化
    const colorTokens = processColorTokens(dictionary.allTokens);

    return JSON.stringify({ ...baseColorSet, colors: colorTokens }, null, 2);
  },
});

const sd = new StyleDictionary('config.js');

await sd.cleanAllPlatforms();
await sd.buildAllPlatforms();

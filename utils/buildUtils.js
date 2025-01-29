/**
 * ビルド処理用のユーティリティ関数
 */

// カラートークンの処理
export function processColorTokens(tokens) {
  return tokens
    .map((token) => {
      try {
        const rgba = hexToRgba(token.value); // HEX値をRGBaに変換
        return createColorData(rgba);
      } catch (error) {
        console.error(`トークン処理エラー: ${token.name}`, error);
        return null;
      }
    })
    .filter((item) => item !== null); // 空配列を削除
}

// カラーデータオブジェクトの作成
function createColorData(rgba) {
  return {
    color: {
      'color-space': 'srgb',
      components: {
        alpha: rgba.alpha.toFixed(3),
        red: rgba.red.toFixed(3),
        green: rgba.green.toFixed(3),
        blue: rgba.blue.toFixed(3),
      },
    },
    idiom: 'universal',
  };
}

// HEX値をRGBaに変換する関数
function hexToRgba(hex) {
  hex = hex.replace(/^#/, '');

  if (hex.length === 6 || hex.length === 8) {
    const r = parseInt(hex.slice(0, 2), 16) / 255;
    const g = parseInt(hex.slice(2, 4), 16) / 255;
    const b = parseInt(hex.slice(4, 6), 16) / 255;
    const a = hex.length === 8 ? parseInt(hex.slice(6, 8), 16) / 255 : 1;

    return {
      red: r,
      green: g,
      blue: b,
      alpha: a,
    };
  }
}

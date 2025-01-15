export default {
  source: ["tokens/sd-tokens.json"],
  hooks: {
    filters: {
      'semantic-colors': (token) => {
        return !token.path.includes("Primitive") && token.path[0] !== "tokenSetOrder";
      },
    },
  },
  platforms: {
    ios: {
      transformGroup: "ios-swift",
      buildPath: "build/ios/",
      files: [
        {
          destination: "Colors.swift",
          format: "ios-swift/class.swift",
          filter: "semantic-colors",
          options: {
            className: "SdColors",
          },
        },
      ],
    },
    android: {
      transformGroup: "android",
      buildPath: "build/android/",
      files: [
        {
          destination: "colors.xml",
          format: "android/colors",
          filter: "semantic-colors",
        },
      ],
    },
    css: {
      transformGroup: "css",
      buildPath: "build/css/",
      files: [
        {
          destination: "_variables.css",
          format: "css/variables",
          filter: "semantic-colors",
        }
      ]
    },
  },
};
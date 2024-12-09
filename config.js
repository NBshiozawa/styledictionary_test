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
      transformGroup: "ios",
      buildPath: "build/ios/",
      files: [
        {
          destination: "colors.h",
          format: "ios/colors.h",
          filter: "semantic-colors",
        },
        {
          destination: "colors.m",
          format: "ios/colors.m",
          filter: "semantic-colors",
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
  },
};
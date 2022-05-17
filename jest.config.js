module.exports = {
    preset: "ts-jest",
    testEnvironment: "node",
    roots: ["src/__tests__"],
    collectCoverage: true,
    collectCoverageFrom: [
      "**/*.ts",
      "!**/node_modules/**",
    ],
    coverageDirectory: "results",
    coverageReporters: ["text"]
};

module.exports = {
  testEnvironment: 'jest-environment-node',
  transform: {
    "^.+\\.tsx?$": "ts-jest"
  },
  moduleFileExtensions: [
    "ts",
    "tsx",
    "js",
    "jsx",
    "json",
    "node",
  ],
  testRegex: '(/__tests__/.*|(\\.|/)(test|spec))\\.(ts|js)x?$',
  testPathIgnorePatterns: [
    '__tests__/__fixtures__',
    '__tests__/helpers'
  ],
  coverageDirectory: 'coverage',
  collectCoverageFrom: [
    'src/**/*.{ts,tsx,js,jsx}',
    '!src/**/*.d.ts',
    '!src/walker/**/*',
    '!src/walker_as/**/*',
    '!src/main.ts',
  ],
  "reporters": [
    "default",
    ["<rootDir>/node_modules/kelonio/out/plugin/jestReporter", {keepStateAtStart: false, keepStateAtEnd: false, printReportAtEnd: true}]
  ],
  "setupFilesAfterEnv": [
    "<rootDir>/node_modules/kelonio/out/plugin/jestReporterSetup.js",
  ],
};

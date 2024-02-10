module.exports = {
  extends: ["@commitlint/config-conventional"],
  rules: {
    "scope-case": [2, "always", ["upper-case"]],
    "scope-min-length": [1, "always", 1],
  },
};

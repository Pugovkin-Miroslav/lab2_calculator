
#pragma once
#include <stack>
#include <string>

/**
 * @brief EvaLuates a mathematical expression in Reserve Polish Notation (RPN).
 *
 * @param expression A string containing the RPN expression (e.g., "2 3 +").
 * Tokens must be separated by spaces
 * @return double The result of evaluated expression.
 * @exception std::invalid_argument Thrown if the exspression is invalid,
 * contains on unknown operator, or attempts division by zero.
 */
double evaluate_rpn(const std::string& expression);

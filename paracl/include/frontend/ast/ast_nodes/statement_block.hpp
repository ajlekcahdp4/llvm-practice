/*
 * ----------------------------------------------------------------------------
 * "THE BEER-WARE LICENSE" (Revision 42):
 * <tsimmerman.ss@phystech.edu>, <alex.rom23@mail.ru> wrote this file.  As long
 * as you retain this notice you can do whatever you want with this stuff. If we
 * meet some day, and you think this stuff is worth it, you can buy us a beer in
 * return.
 * ----------------------------------------------------------------------------
 */

#pragma once

#include "frontend/symtab.hpp"
#include "i_ast_node.hpp"
#include "return_statement.hpp"

#include <cassert>
#include <deque>

namespace paracl::frontend::ast {

class statement_block : private std::deque<i_ast_node *>, public i_statement {
public:
  symtab stab;
  return_vector return_statements;

private:
  EZVIS_VISITABLE();

public:
  statement_block() = default;
  statement_block(std::deque<i_ast_node *> vec, location l)
      : deque{vec}, i_statement{l} {}

  void append_statement(i_ast_node &statement) {
    const bool empty = deque::empty();
    deque::push_back(&statement);

    if (empty) {
      m_loc = statement.loc();
    } else {
      m_loc += statement.loc();
    }
  }
  void add_intrinsic(i_ast_node &statement) { deque::push_front(&statement); }

  using deque::back;
  using deque::begin;
  using deque::cbegin;
  using deque::cend;
  using deque::crbegin;
  using deque::crend;
  using deque::end;
  using deque::front;
  using deque::size;
};

class value_block : private std::deque<i_ast_node *>, public i_expression {
public:
  symtab stab;
  return_vector return_statements;

private:
  EZVIS_VISITABLE();

public:
  value_block() = default;
  value_block(std::deque<i_ast_node *> vec, location l)
      : deque{vec}, i_expression{l} {}

  void append_statement(i_ast_node &statement) {
    const bool empty = deque::empty();
    deque::push_back(&statement);

    if (empty) {
      m_loc = statement.loc();
    } else {
      m_loc += statement.loc();
    }
  }

  using deque::back;
  using deque::begin;
  using deque::cbegin;
  using deque::cend;
  using deque::crbegin;
  using deque::crend;
  using deque::end;
  using deque::front;
  using deque::size;
};

} // namespace paracl::frontend::ast

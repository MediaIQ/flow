(**
 * Copyright (c) 2013-present, Facebook, Inc.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *)

(* Provides utilities for converting AST locations between ALoc.t and Loc.t *)

let abstractify_mapper: (Loc.t, Loc.t, ALoc.t, ALoc.t) Flow_polymorphic_ast_mapper.mapper =
  object
    inherit [Loc.t, Loc.t, ALoc.t, ALoc.t] Flow_polymorphic_ast_mapper.mapper
    method on_loc_annot = ALoc.of_loc
    method on_type_annot = ALoc.of_loc
  end

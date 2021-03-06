/**
 * PANDA 3D SOFTWARE
 * Copyright (c) Carnegie Mellon University.  All rights reserved.
 *
 * All use of this software is subject to the terms of the revised BSD
 * license.  You should have received a copy of this license along
 * with this source code in a file named "LICENSE."
 *
 * @file p3dFileParams.I
 * @author drose
 * @date 2009-06-23
 */

/**
 * Returns the filename that was passed to set_p3d_filename().
 */
inline const std::string &P3DFileParams::
get_p3d_filename() const {
  return _p3d_filename;
}

/**
 * Returns the p3d file offset, the location in the file where the p3d data
 * starts.
 */
inline int P3DFileParams::
get_p3d_offset() const {
  return _p3d_offset;
}

/**
 * Returns the string that was passed to set_p3d_url().
 */
inline const std::string &P3DFileParams::
get_p3d_url() const {
  return _p3d_url;
}

/**
 * Returns the number of tokens in the params.
 */
inline int P3DFileParams::
get_num_tokens() const {
  return _tokens.size();
}

/**
 * Returns the keyword of the nth token.
 */
inline const std::string &P3DFileParams::
get_token_keyword(int n) const {
  assert(n >= 0 && n < (int)_tokens.size());
  return _tokens[n]._keyword;
}

/**
 * Returns the value of the nth token.
 */
inline const std::string &P3DFileParams::
get_token_value(int n) const {
  assert(n >= 0 && n < (int)_tokens.size());
  return _tokens[n]._value;
}

// Copyright 2023 XXIV
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
pub const SINFL_PRE_TBL_SIZE = @as(c_int, 128);
pub const SINFL_LIT_TBL_SIZE = @as(c_int, 1334);
pub const SINFL_OFF_TBL_SIZE = @as(c_int, 402);

pub const sinfl = extern struct {
    bitptr: [*c]const u8,
    bitbuf: c_ulonglong,
    bitcnt: c_int,
    lits: [SINFL_LIT_TBL_SIZE]c_uint,
    dsts: [SINFL_OFF_TBL_SIZE]c_uint,
};

pub extern "C" fn sinflate(out: ?*anyopaque, cap: c_int, in: ?*const anyopaque, size: c_int) c_int;
pub extern "C" fn zsinflate(out: ?*anyopaque, cap: c_int, in: ?*const anyopaque, size: c_int) c_int;

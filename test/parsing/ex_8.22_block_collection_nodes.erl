-module('ex_8.22_block_collection_nodes').

-include_lib("eunit/include/eunit.hrl").

-define(FILENAME, "test/parsing/" ?MODULE_STRING ".yaml").

single_test_() ->
    ?_assertMatch(
      {yamerl_parser,
        {file,?FILENAME},
        [],
        <<>>,
        67,
        true,
        [],
        0,
        68,
        7,
        1,
        false,
        6,
        10,
        utf8,
        false,
        undefined,
        _,
        _,
        [],
        {bcoll,root,0,-1,1,1,-1,1,1},
        false,
        false,
        false,
        [{impl_key,false,false,undefined,undefined,1,1}],
        false,
        false,
        _,
        [],
        0,
        31,
        27,
        undefined,
        undefined,
        _,
        false,
        [],
        [
          {yamerl_stream_end,6,10},
          {yamerl_doc_end,6,10},
          {yamerl_collection_end,6,10,block,mapping},
          {yamerl_collection_end,6,10,block,mapping},
          {yamerl_scalar,6,7,
            {yamerl_tag,6,7,{non_specific,"?"}},
            flow,plain,"bar"},
          {yamerl_mapping_value,6,5},
          {yamerl_scalar,6,2,
            {yamerl_tag,6,2,{non_specific,"?"}},
            flow,plain,"foo"},
          {yamerl_mapping_key,6,2},
          {yamerl_collection_start,6,2,
            {yamerl_tag,5,10,"tag:yaml.org,2002:map"},
            block,mapping},
          {yamerl_mapping_value,5,8},
          {yamerl_scalar,5,1,
            {yamerl_tag,5,1,{non_specific,"?"}},
            flow,plain,"mapping"},
          {yamerl_mapping_key,5,1},
          {yamerl_collection_end,4,10,block,sequence},
          {yamerl_collection_end,4,10,block,sequence},
          {yamerl_scalar,4,4,
            {yamerl_tag,4,4,{non_specific,"?"}},
            flow,plain,"nested"},
          {yamerl_sequence_entry,4,2},
          {yamerl_collection_start,4,2,
            {yamerl_tag,3,3,"tag:yaml.org,2002:seq"},
            block,sequence},
          {yamerl_sequence_entry,3,1},
          {yamerl_scalar,2,3,
            {yamerl_tag,2,3,{non_specific,"?"}},
            flow,plain,"entry"},
          {yamerl_sequence_entry,2,1},
          {yamerl_collection_start,2,1,
            {yamerl_tag,1,11,"tag:yaml.org,2002:seq"},
            block,sequence},
          {yamerl_mapping_value,1,9},
          {yamerl_scalar,1,1,
            {yamerl_tag,1,1,{non_specific,"?"}},
            flow,plain,"sequence"},
          {yamerl_mapping_key,1,1},
          {yamerl_collection_start,1,1,
            {yamerl_tag,1,1,{non_specific,"?"}},
            block,mapping},
          {yamerl_doc_start,1,1,{1,2},_},
          {yamerl_stream_start,1,1,utf8}
        ]
      },
      yamerl_parser:file(?FILENAME)
    ).
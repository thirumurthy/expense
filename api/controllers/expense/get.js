module.exports = {


  friendlyName: 'Get',


  description: 'Get expense.',


  inputs: {
    userid: {
      type: 'number',
      example: 1,
      description: 'The user to fetch the data.',
      required: true
    }
  },


  exits: {

  },


  fn: async function (inputs, exits) {

    try{

      var EXPENSE_GET_SQL = 'call sp_exp_get($1)'
      var rawResult = await sails.sendNativeQuery(EXPENSE_GET_SQL, [inputs.userid  ]);
      return exits.success(rawResult.rows[0]);
    }
    catch(err){
      console.log(err);
      return exits.success();
    }
    

  }


};

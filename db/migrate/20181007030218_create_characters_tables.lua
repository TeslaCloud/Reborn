local Migration = ActiveRecord.Migration.new(20181007030218)
  function Migration:change()
    ActiveRecord.define_model('ammo', function(t)
      t:string 'type'
      t:integer 'amount'
      t:integer 'character_id'
    end)

    ActiveRecord.define_model('characters', function(t)
      t:string { 'steam_id', null = false }
      t:string { 'name', null = false }
      t:string 'model'
      t:integer 'skin'
      t:integer 'gender'
      t:text 'phys_desc'
      t:integer 'money'
      t:integer 'character_id'
      t:integer 'user_id'
      t:integer 'health'
    end)
  end
return Migration

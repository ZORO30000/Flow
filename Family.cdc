pub contract Authentication {

    pub var family: {Address: Family}
    
    pub struct Family {
        pub let Name: String
        pub let Guardian: String
        pub let MemberCount: Int
        pub let account: Address

    
        init(_Name: String, _Guardian: String, _MemberCount: Int, _account: Address) {
            self.Name = _Name
            self.Guardian = _Guardian
            self.MemberCount = _MemberCount
            self.account = _account
        }
    }

    pub fun addFamily(Name: String, Guardian: String, MemberCount: Int, account: Address) {
        let newFamily = Family(_Name: Name, _Guardian: Guardian, _MemberCount: MemberCount, _account: account)
        self.family[account] = newFamily
    }

    init() {
        self.family = {}
    }

}

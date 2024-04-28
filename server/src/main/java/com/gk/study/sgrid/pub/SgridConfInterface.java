package com.gk.study.sgrid.pub;

public interface SgridConfInterface {
    // must be called
    // set db conn
    void SetDBProperty(String url,String username,String password);
    void SetSgridConf();
}

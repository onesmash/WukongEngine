//
//  AppCore.h
//  AppCore
//
//  Created by Xuhui on 15/6/21.
//  Copyright (c) 2015年 Xuhui. All rights reserved.
//

#ifndef __WukongEngine__WukongEngine__
#define __WukongEngine__WukongEngine__
#include "base/thread/Thread.h"
#include <memory>
#include <string>
#include <list>

extern "C" struct lua_State;

namespace WukongEngine {

class WukongEngine {
public:
    struct EngineEnv {
        std::string moduleDirectory;
        std::string serviceDirectory;
        std::string scriptDirectory;
        std::string tempDirectory;
    };
    explicit WukongEngine(const std::string& name);
    virtual ~WukongEngine();
    void start(const EngineEnv& env);
    void stop();

private:

    void startInternal();
    void stopInternal();

    std::shared_ptr<WukongBase::Base::Thread> thread_;
    lua_State *L_;
    EngineEnv env_;
};
}

#endif /* defined(__WukongEngine__WukongEngine__) */

.class public Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;
.super Lcom/sec/android/app/camera/service/AbstractCallbackService;
.source "SamsungAccountCallbackService.java"


# static fields
.field private static final CC_REQUEST_ID:I = 0x64

.field private static final CLIENT_ID:Ljava/lang/String; = "snvw2rv1zo"

.field private static final SA_INTENT_ACTION:Ljava/lang/String; = "com.msc.action.samsungaccount.REQUEST_SERVICE"

.field private static final SA_INTENT_CLASS_NAME:Ljava/lang/String; = "com.msc.sa.service.RequestService"

.field private static final SA_INTENT_PACKAGE_NAME:Ljava/lang/String; = "com.osp.app.signin"

.field private static final TAG:Ljava/lang/String; = "SACallbackService"


# instance fields
.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundHandlerThread:Landroid/os/HandlerThread;

.field private mIBinder:Landroid/os/IBinder;

.field private mRegistrationCode:Ljava/lang/String;

.field private final mRequestAccessTokenRunnable:Ljava/lang/Runnable;

.field private final mSaCallback:Lcom/msc/sa/aidl/ISACallback$Stub;

.field private mSaService:Lcom/msc/sa/aidl/ISAService;

.field private final saServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/service/AbstractCallbackService;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->mIBinder:Landroid/os/IBinder;

    .line 3
    iput-object p1, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->mBackgroundHandler:Landroid/os/Handler;

    .line 4
    iput-object p1, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    .line 5
    new-instance p1, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService$1;-><init>(Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->mSaCallback:Lcom/msc/sa/aidl/ISACallback$Stub;

    .line 6
    new-instance p1, Lcom/sec/android/app/camera/service/d;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/service/d;-><init>(Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->mRequestAccessTokenRunnable:Ljava/lang/Runnable;

    .line 7
    new-instance p1, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService$2;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService$2;-><init>(Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->saServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/msc/sa/aidl/ISAService;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/service/AbstractCallbackService;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->mIBinder:Landroid/os/IBinder;

    .line 10
    iput-object p1, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->mBackgroundHandler:Landroid/os/Handler;

    .line 11
    iput-object p1, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    .line 12
    new-instance p1, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService$1;-><init>(Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->mSaCallback:Lcom/msc/sa/aidl/ISACallback$Stub;

    .line 13
    new-instance p1, Lcom/sec/android/app/camera/service/d;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/service/d;-><init>(Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->mRequestAccessTokenRunnable:Ljava/lang/Runnable;

    .line 14
    new-instance p1, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService$2;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService$2;-><init>(Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->saServiceConnection:Landroid/content/ServiceConnection;

    .line 15
    iput-object p2, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->mSaService:Lcom/msc/sa/aidl/ISAService;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->lambda$new$0()V

    return-void
.end method

.method static bridge synthetic b(Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->mBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->mRegistrationCode:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->mRequestAccessTokenRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;)Lcom/msc/sa/aidl/ISAService;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->mSaService:Lcom/msc/sa/aidl/ISAService;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->mIBinder:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic g(Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;Lcom/msc/sa/aidl/ISAService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->mSaService:Lcom/msc/sa/aidl/ISAService;

    return-void
.end method

.method private getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/service/AbstractCallbackService;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private isNeedToUpdateCountryCode(Landroid/content/Context;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "com.osp.app.signin"

    .line 2
    invoke-virtual {p0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    .line 3
    array-length p0, p0

    const-string v1, "samsung_account_cc_value"

    const-string v2, "NONE"

    if-lez p0, :cond_4

    .line 4
    invoke-static {p1, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "FAIL"

    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    const-string p0, "samsung_account_cc_time"

    .line 6
    invoke-static {p1, p0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide p0

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p0

    const-string p0, "com.sec.android.app.camera"

    invoke-static {p0}, Lcom/sec/android/app/camera/util/AppsStubUtil;->getAppUpdateCheckTimeInterval(Ljava/lang/String;)J

    move-result-wide p0

    cmp-long p0, v1, p0

    if-lez p0, :cond_2

    move v0, v3

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v3

    .line 8
    :cond_4
    invoke-static {p1, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private synthetic lambda$new$0()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->mIBinder:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/msc/sa/aidl/ISAService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/msc/sa/aidl/ISAService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->mSaService:Lcom/msc/sa/aidl/ISAService;

    const-string v1, "SACallbackService"

    if-nez v0, :cond_0

    const-string v0, "mRequestAccessTokenRunnable return, because service is null"

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/service/AbstractCallbackService;->notifyCompletion()V

    return-void

    :cond_0
    :try_start_0
    const-string v0, "mRequestAccessTokenRunnable : start to get code and token"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "additional"

    const-string v3, "cc"

    .line 6
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->mSaService:Lcom/msc/sa/aidl/ISAService;

    const-string/jumbo v3, "snvw2rv1zo"

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->mSaCallback:Lcom/msc/sa/aidl/ISACallback$Stub;

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/msc/sa/aidl/ISAService;->registerCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/msc/sa/aidl/ISACallback;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->mRegistrationCode:Ljava/lang/String;

    .line 8
    iget-object v3, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->mSaService:Lcom/msc/sa/aidl/ISAService;

    const/16 v4, 0x64

    invoke-interface {v3, v4, v2, v0}, Lcom/msc/sa/aidl/ISAService;->requestAccessToken(ILjava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRequestAccessTokenRunnable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/service/AbstractCallbackService;->notifyCompletion()V

    :goto_0
    return-void
.end method

.method private startBackgroundHandler()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BackgroundHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->mBackgroundHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private stopBackgroundHandler()V
    .locals 4

    const-string v0, "SACallbackService"

    const-string/jumbo v1, "stopBackgroundHandler - start"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopBackgroundHandler : interrupted - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    :cond_0
    const-string/jumbo p0, "stopBackgroundHandler - end"

    .line 7
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public bind(Lcom/sec/android/app/camera/service/AbstractCallbackService$CompleteListener;)V
    .locals 2

    const-string v0, "SACallbackService"

    const-string v1, "bind"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/service/AbstractCallbackService;->bind(Lcom/sec/android/app/camera/service/AbstractCallbackService$CompleteListener;)V

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->startBackgroundHandler()V

    .line 4
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.msc.action.samsungaccount.REQUEST_SERVICE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.osp.app.signin"

    const-string v1, "com.msc.sa.service.RequestService"

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/service/AbstractCallbackService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->saServiceConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SACallbackService"

    return-object p0
.end method

.method public isNeedToBind(Landroid/content/Context;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->isNeedToUpdateCountryCode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public unbind()V
    .locals 2

    const-string v0, "SACallbackService"

    const-string/jumbo v1, "unbind"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Lcom/sec/android/app/camera/service/AbstractCallbackService;->unbind()V

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->stopBackgroundHandler()V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->mSaService:Lcom/msc/sa/aidl/ISAService;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/service/AbstractCallbackService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->saServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->mSaService:Lcom/msc/sa/aidl/ISAService;

    :cond_0
    return-void
.end method

.class Lcom/sec/android/app/camera/service/SamsungAccountCallbackService$1;
.super Lcom/msc/sa/aidl/ISACallback$Stub;
.source "SamsungAccountCallbackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService$1;->this$0:Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;

    invoke-direct {p0}, Lcom/msc/sa/aidl/ISACallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveAccessToken(IZLandroid/os/Bundle;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceiveAccessToken : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SACallbackService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    const-string p1, "cc"

    const-string v0, "FAIL"

    .line 2
    invoke-virtual {p3, p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p2, :cond_0

    const-string p2, "error_code"

    .line 3
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveAccessToken error_code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceiveAccessToken error_message: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "error_message"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService$1;->this$0:Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;

    iget-object p2, p2, Lcom/sec/android/app/camera/service/AbstractCallbackService;->mContext:Landroid/content/Context;

    const-string p3, "samsung_account_cc_value"

    invoke-static {p2, p3, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService$1;->this$0:Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;

    iget-object p1, p1, Lcom/sec/android/app/camera/service/AbstractCallbackService;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const-string v0, "samsung_account_cc_time"

    invoke-static {p1, v0, p2, p3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;J)V

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService$1;->this$0:Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;

    invoke-static {p1}, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->e(Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;)Lcom/msc/sa/aidl/ISAService;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService$1;->this$0:Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;

    invoke-static {p2}, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;->c(Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/msc/sa/aidl/ISAService;->unregisterCallback(Ljava/lang/String;)Z

    .line 9
    iget-object p0, p0, Lcom/sec/android/app/camera/service/SamsungAccountCallbackService$1;->this$0:Lcom/sec/android/app/camera/service/SamsungAccountCallbackService;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/service/AbstractCallbackService;->notifyCompletion()V

    return-void
.end method

.method public onReceiveAuthCode(IZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onReceiveChecklistValidation(IZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onReceiveDisclaimerAgreement(IZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onReceivePasswordConfirmation(IZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onReceiveRLControlFMM(IZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onReceiveRubinRequest(IZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onReceiveSCloudAccessToken(IZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

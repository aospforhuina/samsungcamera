.class public Lcom/sec/android/app/camera/util/BroadcastUtil;
.super Ljava/lang/Object;
.source "BroadcastUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BroadcastUtil"

.field private static mBroadCastHandler:Landroid/os/Handler;

.field private static volatile mBroadCastHandlerThread:Landroid/os/HandlerThread;

.field private static final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/BroadcastUtil;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/BroadcastUtil;->lambda$sendNewVideoBroadcast$13(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic b(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Handler;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/BroadcastUtil;->lambda$notifyStartRecordingInfo$3(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic c(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/BroadcastUtil;->lambda$stopVoiceRecorder$15(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic d(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/BroadcastUtil;->lambda$notifyStartRecordingInfo$2(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic e(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Handler;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/BroadcastUtil;->lambda$sendAppInAppBroadcast$5(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic f(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/BroadcastUtil;->lambda$sendCameraStartBroadcast$8(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic g(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/BroadcastUtil;->lambda$sendNewPictureBroadcast$11(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic h(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/BroadcastUtil;->lambda$sendAppInAppBroadcast$4(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic i(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/BroadcastUtil;->lambda$stopVoiceRecorder$14(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic j(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/BroadcastUtil;->lambda$notifyCameraInfo$0(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic k(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/BroadcastUtil;->lambda$sendNewVideoBroadcast$12(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic l(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Handler;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/BroadcastUtil;->lambda$sendCameraFailedBroadcast$7(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Handler;)V

    return-void
.end method

.method private static synthetic lambda$notifyCameraInfo$0(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "BroadcastUtil"

    const-string v1, "notifyCameraInfo : Start"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p0, "notifyCameraInfo : End"

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$notifyCameraInfo$1(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Handler;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/util/k;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/camera/util/k;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static synthetic lambda$notifyStartRecordingInfo$2(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "BroadcastUtil"

    const-string v1, "notifyRecordingInfo : Start"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p0, "notifyRecordingInfo : End"

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$notifyStartRecordingInfo$3(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Handler;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/util/h;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/camera/util/h;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static synthetic lambda$sendAppInAppBroadcast$4(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "BroadcastUtil"

    const-string v1, "sendAppInAppBroadcast : Start"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Landroid/os/UserHandle;->SEM_ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    const-string p0, "sendAppInAppBroadcast : End"

    .line 5
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$sendAppInAppBroadcast$5(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Handler;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/util/j;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/camera/util/j;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static synthetic lambda$sendCameraFailedBroadcast$6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static synthetic lambda$sendCameraFailedBroadcast$7(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Handler;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/util/l;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/camera/util/l;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static synthetic lambda$sendCameraStartBroadcast$8(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "BroadcastUtil"

    const-string v1, "sendCameraStartBroadcast : Start"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p0, "sendCameraStartBroadcast : End"

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$sendCameraStartBroadcast$9(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Handler;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/util/i;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/camera/util/i;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static synthetic lambda$sendNewPictureBroadcast$10(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static synthetic lambda$sendNewPictureBroadcast$11(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/util/n;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/camera/util/n;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static synthetic lambda$sendNewVideoBroadcast$12(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.action.NEW_VIDEO"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static synthetic lambda$sendNewVideoBroadcast$13(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/util/m;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/camera/util/m;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static synthetic lambda$stopVoiceRecorder$14(Landroid/content/Context;)V
    .locals 3

    const-string v0, "BroadcastUtil"

    const-string v1, "stopVoiceRecorder : Start"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.voicerecorder.rec_save"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.voicenote.rec_save"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sec.android.app.voicenote.Controller"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string p0, "stopVoiceRecorder : End"

    .line 4
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$stopVoiceRecorder$15(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/util/a;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/util/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic m(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/BroadcastUtil;->lambda$sendCameraFailedBroadcast$6(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic n(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Handler;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/BroadcastUtil;->lambda$sendCameraStartBroadcast$9(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Handler;)V

    return-void
.end method

.method public static notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "BroadcastUtil"

    const-string v1, "notifyCameraInfo"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.intent.action.SSRM_REQUEST"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SSRM_STATUS_NAME"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "SSRM_STATUS_VALUE"

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PackageName"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    const-string p2, "PID"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8
    sget-object p1, Lcom/sec/android/app/camera/util/BroadcastUtil;->mBroadCastHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/camera/util/e;

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/camera/util/e;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static notifyStartRecordingInfo(Landroid/content/Context;Ljava/lang/String;IIILjava/lang/String;ZZ)V
    .locals 2

    const-string v0, "BroadcastUtil"

    const-string v1, "notifyRecordingInfo"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.intent.action.SSRM_REQUEST"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SSRM_STATUS_NAME"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "SSRM_STATUS_VALUE"

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "SSRM_STATUS_FACING"

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "SSRM_STATUS_HDR"

    .line 7
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "SSRM_STATUS_VDIS"

    .line 8
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "SSRM_STATUS_RESOLUTION"

    .line 9
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "SSRM_STATUS_EFFECT"

    .line 10
    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "SSRM_STATUS_HIGH_SPEED_RECORDING"

    .line 11
    invoke-virtual {v0, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PackageName"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    const-string p2, "PID"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14
    sget-object p1, Lcom/sec/android/app/camera/util/BroadcastUtil;->mBroadCastHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/camera/util/p;

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/camera/util/p;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static notifyStopRecordingInfo(Landroid/content/Context;)V
    .locals 2

    const-string v0, "Camera_recording"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/util/BroadcastUtil;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic o(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Handler;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/BroadcastUtil;->lambda$notifyCameraInfo$1(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic p(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/BroadcastUtil;->lambda$sendNewPictureBroadcast$10(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public static sendAppInAppBroadcast(Landroid/content/Context;)V
    .locals 3

    const-string v0, "BroadcastUtil"

    const-string v1, "sendAppInAppBroadcast"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.stop.app-in-app"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "stopFrom"

    const-string v2, "Camera"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    sget-object v1, Lcom/sec/android/app/camera/util/BroadcastUtil;->mBroadCastHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/util/b;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/camera/util/b;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static sendCameraFailedBroadcast(Landroid/content/Context;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.salab.act.intent.ACTION_CAMERA_FAILED"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "camerafailed"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PackageName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    sget-object p1, Lcom/sec/android/app/camera/util/BroadcastUtil;->mBroadCastHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v1, Lcom/sec/android/app/camera/util/c;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/camera/util/c;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static sendCameraStartBroadcast(Landroid/content/Context;ZZ)V
    .locals 2

    const-string v0, "BroadcastUtil"

    const-string v1, "sendCameraStartBroadcast"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "com.sec.android.app.camera.ACTION_CAMERA_START"

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "secure-camera"

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p1, "com.sec.android.app.camera.ACTION_CAMERA_STOP"

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PackageName"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    sget-object p1, Lcom/sec/android/app/camera/util/BroadcastUtil;->mBroadCastHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/camera/util/d;

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/camera/util/d;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static sendNewPictureBroadcast(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/util/BroadcastUtil;->mBroadCastHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/util/g;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/util/g;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static sendNewVideoBroadcast(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/util/BroadcastUtil;->mBroadCastHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/util/f;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/util/f;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static starHandler()V
    .locals 3

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/util/BroadcastUtil;->mBroadCastHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/util/BroadcastUtil;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/util/BroadcastUtil;->mBroadCastHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "BroadCastHandlerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/sec/android/app/camera/util/BroadcastUtil;->mBroadCastHandlerThread:Landroid/os/HandlerThread;

    .line 5
    sget-object v1, Lcom/sec/android/app/camera/util/BroadcastUtil;->mBroadCastHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 6
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/sec/android/app/camera/util/BroadcastUtil;->mBroadCastHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/sec/android/app/camera/util/BroadcastUtil;->mBroadCastHandler:Landroid/os/Handler;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public static stopHandler()V
    .locals 5

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/util/BroadcastUtil;->mBroadCastHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/util/BroadcastUtil;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/util/BroadcastUtil;->mBroadCastHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    .line 4
    sget-object v1, Lcom/sec/android/app/camera/util/BroadcastUtil;->mBroadCastHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    sget-object v1, Lcom/sec/android/app/camera/util/BroadcastUtil;->mBroadCastHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "BroadcastUtil"

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BroadCastHandlerThread : interrupted - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    .line 7
    sput-object v1, Lcom/sec/android/app/camera/util/BroadcastUtil;->mBroadCastHandlerThread:Landroid/os/HandlerThread;

    .line 8
    sput-object v1, Lcom/sec/android/app/camera/util/BroadcastUtil;->mBroadCastHandler:Landroid/os/Handler;

    .line 9
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method public static stopVoiceRecorder(Landroid/content/Context;)V
    .locals 2

    const-string v0, "BroadcastUtil"

    const-string v1, "stopVoiceRecorder"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/util/BroadcastUtil;->mBroadCastHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/util/o;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/util/o;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

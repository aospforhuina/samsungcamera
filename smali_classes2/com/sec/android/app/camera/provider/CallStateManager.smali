.class public Lcom/sec/android/app/camera/provider/CallStateManager;
.super Ljava/lang/Object;
.source "CallStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/provider/CallStateManager$CallStateListener;
    }
.end annotation


# static fields
.field private static final ACTION_MEDIA_AUDIO_MODE:Ljava/lang/String; = "android.samsung.media.action.AUDIO_MODE"

.field private static final CATEGORY_DEX_HOME:Ljava/lang/String; = "android.intent.category.DEX_HOME"

.field private static final DELAY_TIME_TO_FINISH_OTHER_VT_CALL:I = 0x7d0

.field private static final EXTRA_VALUE_AUDIO_MODE:Ljava/lang/String; = "android.samsung.media.extra.AUDIO_MODE"

.field private static final TAG:Ljava/lang/String; = "CallStateManager"

.field private static final UNSET_VALUE:I = -0x1


# instance fields
.field private mAudioModeBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallStateListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/sec/android/app/camera/provider/CallStateManager$CallStateListener;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private final mFinishOtherVtCallRunnable:Ljava/lang/Runnable;

.field private final mRegisterLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mRegisterLock:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mCallStateListenerMap:Ljava/util/HashMap;

    .line 4
    new-instance v0, Lcom/sec/android/app/camera/provider/c;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/provider/c;-><init>(Lcom/sec/android/app/camera/provider/CallStateManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mFinishOtherVtCallRunnable:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lcom/sec/android/app/camera/provider/CallStateManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/provider/CallStateManager$1;-><init>(Lcom/sec/android/app/camera/provider/CallStateManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mAudioModeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 6
    iput-object p1, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 7
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method

.method public static synthetic a(Ljava/util/List;)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/provider/CallStateManager;->lambda$getTopActivityName$6(Ljava/util/List;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/provider/CallStateManager;->lambda$getTopActivityName$7(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/util/List;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/provider/CallStateManager;->lambda$getTopActivityName$5(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/provider/CallStateManager;Landroid/telephony/SubscriptionInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/provider/CallStateManager;->lambda$registerCallStateListeners$8(Landroid/telephony/SubscriptionInfo;)V

    return-void
.end method

.method public static synthetic e(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ActivityInfo;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/provider/CallStateManager;->lambda$getResolvedActivityNameFromIntent$2(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/sec/android/app/camera/provider/CallStateManager;Lcom/sec/android/app/camera/provider/CallStateManager$CallStateListener;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/provider/CallStateManager;->lambda$unregisterCallStateListeners$9(Lcom/sec/android/app/camera/provider/CallStateManager$CallStateListener;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic g(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/provider/CallStateManager;->lambda$getResolvedActivityNameFromIntent$1(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method private getActivityName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/provider/CallStateManager;->getResolvedActivityNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getResolvedActivityNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 2
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/provider/i;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/provider/i;-><init>(Landroid/content/pm/PackageManager;)V

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/provider/n;->a:Lcom/sec/android/app/camera/provider/n;

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/provider/m;->a:Lcom/sec/android/app/camera/provider/m;

    .line 5
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private getTopActivityName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 2
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/provider/k;->a:Lcom/sec/android/app/camera/provider/k;

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/provider/e;->a:Lcom/sec/android/app/camera/provider/e;

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/provider/d;->a:Lcom/sec/android/app/camera/provider/d;

    .line 5
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/provider/j;->a:Lcom/sec/android/app/camera/provider/j;

    .line 6
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 7
    sget-object v0, Lcom/sec/android/app/camera/provider/l;->a:Lcom/sec/android/app/camera/provider/l;

    .line 8
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic h(Landroid/app/ActivityManager;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/provider/CallStateManager;->lambda$getTopActivityName$4(Landroid/app/ActivityManager;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/provider/CallStateManager;->lambda$getResolvedActivityNameFromIntent$3(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isCalling(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/camera/provider/CallStateManager;->isOffHook(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/camera/provider/CallStateManager;->isVTCallOngoing(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/camera/provider/CallStateManager;->isInCall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/camera/provider/CallStateManager;->isOtherVTCallOngoing(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isInCall(Landroid/content/Context;)Z
    .locals 1

    const-string/jumbo v0, "telecom"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    .line 2
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result p0

    return p0
.end method

.method private isNoActivityOnAnyScreen()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CallStateManager;->getTopActivityName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.category.HOME"

    .line 2
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/provider/CallStateManager;->getActivityName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.intent.category.DEX_HOME"

    .line 3
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/provider/CallStateManager;->getActivityName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNoActivityOnAnyScreen - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallStateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static isOffHook(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "phone"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 4
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->semGetCallState(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isOtherVTCallOngoing(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "audio"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 2
    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isOtherVTCallOngoing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CallStateManager"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isPopupCallSupported()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MULTI_WINDOW_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CallStateManager;->isNoActivityOnAnyScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "call_popup_type_list"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public static isVTCallOngoing(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "phone"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->semIsVideoCall()Z

    move-result p0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVTCallOngoing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallStateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic j(Lcom/sec/android/app/camera/provider/CallStateManager;Lcom/sec/android/app/camera/provider/CallStateManager$CallStateListener;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/provider/CallStateManager;->unregisterCallStateListener(Lcom/sec/android/app/camera/provider/CallStateManager$CallStateListener;I)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/camera/provider/CallStateManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CallStateManager;->lambda$new$0()V

    return-void
.end method

.method static bridge synthetic l(Lcom/sec/android/app/camera/provider/CallStateManager;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object p0
.end method

.method private static synthetic lambda$getResolvedActivityNameFromIntent$1(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;
    .locals 1

    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getResolvedActivityNameFromIntent$2(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ActivityInfo;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object p0
.end method

.method private static synthetic lambda$getResolvedActivityNameFromIntent$3(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method private static synthetic lambda$getTopActivityName$4(Landroid/app/ActivityManager;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getTopActivityName$5(Ljava/util/List;)Z
    .locals 0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$getTopActivityName$6(Ljava/util/List;)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0
.end method

.method private static synthetic lambda$getTopActivityName$7(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    return-object p0
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/provider/CallStateManager;->isOtherVTCallOngoing(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CALL_STATUS:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "camera.action.CALL_STATE_IDLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$registerCallStateListeners$8(Landroid/telephony/SubscriptionInfo;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/provider/CallStateManager$CallStateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/provider/CallStateManager$CallStateListener;-><init>(Lcom/sec/android/app/camera/provider/CallStateManager;Lcom/sec/android/app/camera/provider/o;)V

    .line 2
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/provider/CallStateManager;->registerCallStateListener(Lcom/sec/android/app/camera/provider/CallStateManager$CallStateListener;I)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mCallStateListenerMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$unregisterCallStateListeners$9(Lcom/sec/android/app/camera/provider/CallStateManager$CallStateListener;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/provider/CallStateManager;->unregisterCallStateListener(Lcom/sec/android/app/camera/provider/CallStateManager$CallStateListener;)V

    return-void
.end method

.method static bridge synthetic m(Lcom/sec/android/app/camera/provider/CallStateManager;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object p0
.end method

.method static bridge synthetic n(Lcom/sec/android/app/camera/provider/CallStateManager;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mFinishOtherVtCallRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/sec/android/app/camera/provider/CallStateManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CallStateManager;->isPopupCallSupported()Z

    move-result p0

    return p0
.end method

.method private onAudioModeChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.samsung.media.extra.AUDIO_MODE"

    const/4 v1, -0x2

    .line 1
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioModeChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallStateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 3
    iget-object p2, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p2

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CALL_STATUS:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p2, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 5
    new-instance p0, Landroid/content/Intent;

    const-string p2, "camera.action.CALL_STATE_OFFHOOK"

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/camera/provider/CallStateManager;->isCalling(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    sget-object p2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CALL_STATUS:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    const/4 v0, 0x0

    invoke-interface {p0, p2, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 8
    new-instance p0, Landroid/content/Intent;

    const-string p2, "camera.action.CALL_STATE_IDLE"

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static bridge synthetic p(Lcom/sec/android/app/camera/provider/CallStateManager;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/provider/CallStateManager;->onAudioModeChanged(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private registerAudioModeReceiver()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.samsung.media.action.AUDIO_MODE"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mAudioModeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerCallStateListener(Lcom/sec/android/app/camera/provider/CallStateManager$CallStateListener;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/16 v0, 0x20

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method private registerCallStateListener(Lcom/sec/android/app/camera/provider/CallStateManager$CallStateListener;I)V
    .locals 1

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/16 p2, 0x20

    .line 4
    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method private registerCallStateListeners()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mRegisterLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "CallStateManager"

    const-string v2, "registerCallStateListeners"

    .line 2
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mCallStateListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "CallStateManager"

    const-string v1, "registerCallStateListeners - returned because allCallStateListener have already registered"

    .line 6
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "telephony_subscription_service"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 10
    new-instance v2, Lcom/sec/android/app/camera/provider/h;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/provider/h;-><init>(Lcom/sec/android/app/camera/provider/CallStateManager;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 11
    :cond_2
    new-instance v1, Lcom/sec/android/app/camera/provider/CallStateManager$CallStateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/provider/CallStateManager$CallStateListener;-><init>(Lcom/sec/android/app/camera/provider/CallStateManager;Lcom/sec/android/app/camera/provider/o;)V

    .line 12
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/provider/CallStateManager;->registerCallStateListener(Lcom/sec/android/app/camera/provider/CallStateManager$CallStateListener;)V

    .line 13
    iget-object v2, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mCallStateListenerMap:Ljava/util/HashMap;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CallStateManager;->registerAudioModeReceiver()V

    .line 15
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private unregisterAudioModeReceiver()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mAudioModeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterAudioModeReceiver : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CallStateManager"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private unregisterCallStateListener(Lcom/sec/android/app/camera/provider/CallStateManager$CallStateListener;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method private unregisterCallStateListener(Lcom/sec/android/app/camera/provider/CallStateManager$CallStateListener;I)V
    .locals 1

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method private unregisterCallStateListeners()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mRegisterLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "CallStateManager"

    const-string/jumbo v2, "unregisterCallStateListeners"

    .line 2
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mCallStateListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mCallStateListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mCallStateListenerMap:Ljava/util/HashMap;

    new-instance v2, Lcom/sec/android/app/camera/provider/f;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/provider/f;-><init>(Lcom/sec/android/app/camera/provider/CallStateManager;)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mCallStateListenerMap:Ljava/util/HashMap;

    new-instance v2, Lcom/sec/android/app/camera/provider/g;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/provider/g;-><init>(Lcom/sec/android/app/camera/provider/CallStateManager;)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mCallStateListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 8
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CallStateManager;->unregisterAudioModeReceiver()V

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public start()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CallStateManager;->registerCallStateListeners()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CALL_STATUS:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CallStateManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/provider/CallStateManager;->isCalling(Landroid/content/Context;)Z

    move-result p0

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method public stop()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CallStateManager;->unregisterCallStateListeners()V

    return-void
.end method

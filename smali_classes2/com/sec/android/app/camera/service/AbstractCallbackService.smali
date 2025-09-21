.class public abstract Lcom/sec/android/app/camera/service/AbstractCallbackService;
.super Ljava/lang/Object;
.source "AbstractCallbackService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/service/AbstractCallbackService$CompleteListener;
    }
.end annotation


# instance fields
.field private mCompleteListener:Lcom/sec/android/app/camera/service/AbstractCallbackService$CompleteListener;

.field protected final mContext:Landroid/content/Context;

.field private mIsRunning:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sec/android/app/camera/service/AbstractCallbackService;->mCompleteListener:Lcom/sec/android/app/camera/service/AbstractCallbackService$CompleteListener;

    .line 3
    iput-object p1, p0, Lcom/sec/android/app/camera/service/AbstractCallbackService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bind(Lcom/sec/android/app/camera/service/AbstractCallbackService$CompleteListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/service/AbstractCallbackService;->mCompleteListener:Lcom/sec/android/app/camera/service/AbstractCallbackService$CompleteListener;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/sec/android/app/camera/service/AbstractCallbackService;->mIsRunning:Z

    return-void
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public abstract isNeedToBind(Landroid/content/Context;)Z
.end method

.method public final isRunning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/service/AbstractCallbackService;->mIsRunning:Z

    return p0
.end method

.method protected final notifyCompletion()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/service/AbstractCallbackService;->mCompleteListener:Lcom/sec/android/app/camera/service/AbstractCallbackService$CompleteListener;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/service/a;->a:Lcom/sec/android/app/camera/service/a;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public unbind()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/sec/android/app/camera/service/AbstractCallbackService;->mCompleteListener:Lcom/sec/android/app/camera/service/AbstractCallbackService$CompleteListener;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sec/android/app/camera/service/AbstractCallbackService;->mIsRunning:Z

    return-void
.end method

.class Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl$BixbyCmdParams;
.super Ljava/lang/Object;
.source "CameraExecutorManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BixbyCmdParams"
.end annotation


# instance fields
.field private mCommandId:Lcom/sec/android/app/camera/interfaces/CommandId;

.field private mSettingValue:I

.field private mSlotValue:Ljava/lang/String;

.field private mStateId:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/executor/n2;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl$BixbyCmdParams;-><init>()V

    return-void
.end method

.method static bridge synthetic a(Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl$BixbyCmdParams;)Lcom/sec/android/app/camera/interfaces/CommandId;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mCommandId:Lcom/sec/android/app/camera/interfaces/CommandId;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl$BixbyCmdParams;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mSettingValue:I

    return p0
.end method

.method static bridge synthetic c(Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl$BixbyCmdParams;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mSlotValue:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl$BixbyCmdParams;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mStateId:I

    return p0
.end method

.method static bridge synthetic e(Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl$BixbyCmdParams;Lcom/sec/android/app/camera/interfaces/CommandId;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mCommandId:Lcom/sec/android/app/camera/interfaces/CommandId;

    return-void
.end method

.method static bridge synthetic f(Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl$BixbyCmdParams;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mSettingValue:I

    return-void
.end method

.method static bridge synthetic g(Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl$BixbyCmdParams;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mSlotValue:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic h(Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl$BixbyCmdParams;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mStateId:I

    return-void
.end method

.class Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;
.super Ljava/lang/Object;
.source "CameraShootingMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/util/CameraShootingMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShootingModeInfo"
.end annotation


# instance fields
.field private final mFacing:I

.field private final mShootingModeId:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->mFacing:I

    .line 3
    iput p2, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->mShootingModeId:I

    return-void
.end method

.method static bridge synthetic a(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->mShootingModeId:I

    return p0
.end method


# virtual methods
.method getActivityName()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->mShootingModeId:I

    invoke-static {p0}, Lcom/sec/android/app/camera/util/ShootingModeMap;->getActivityNameMap(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getCameraId(I)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->mFacing:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2
    iget p0, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->mShootingModeId:I

    invoke-static {p0}, Lcom/sec/android/app/camera/util/ShootingModeMap;->getBackCameraIdList(I)Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    goto :goto_0

    .line 3
    :cond_0
    iget p0, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->mShootingModeId:I

    invoke-static {p0}, Lcom/sec/android/app/camera/util/ShootingModeMap;->getFrontCameraIdList(I)Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    :goto_0
    return p0
.end method

.method getCommandId()Lcom/sec/android/app/camera/interfaces/CommandId;
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->mShootingModeId:I

    invoke-static {p0}, Lcom/sec/android/app/camera/util/ShootingModeMap;->getCommandId(I)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "facing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->mFacing:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", shooting mode ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->mShootingModeId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

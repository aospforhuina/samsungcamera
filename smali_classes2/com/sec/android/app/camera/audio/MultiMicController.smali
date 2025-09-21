.class Lcom/sec/android/app/camera/audio/MultiMicController;
.super Ljava/lang/Object;
.source "MultiMicController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiMicController"


# instance fields
.field private mIsMultiMicZoomFocusEnabled:Z

.field private final mManager:Lcom/samsung/android/camera/mic/SemMultiMicManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/mic/SemMultiMicManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sec/android/app/camera/audio/MultiMicController;->mIsMultiMicZoomFocusEnabled:Z

    .line 3
    iput-object p1, p0, Lcom/sec/android/app/camera/audio/MultiMicController;->mManager:Lcom/samsung/android/camera/mic/SemMultiMicManager;

    return-void
.end method

.method private initialize(IIII)V
    .locals 2

    const-string v0, "MultiMicController"

    const-string v1, "initialize"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p4}, Lcom/sec/android/app/camera/util/AudioUtil;->getMultiMicFacing(I)I

    move-result p4

    .line 3
    invoke-static {p1}, Lcom/sec/android/app/camera/util/AudioUtil;->getMultiMicOrientation(I)I

    move-result p1

    int-to-float p2, p2

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p2, v0

    int-to-float p3, p3

    div-float/2addr p3, v0

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/MultiMicController;->mManager:Lcom/samsung/android/camera/mic/SemMultiMicManager;

    invoke-virtual {p0, p4, p1, p3, p2}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->initialize(IIFF)V

    return-void
.end method


# virtual methods
.method enableZoomFocus(ZI)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableZoomFocus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiMicController"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/MultiMicController;->mManager:Lcom/samsung/android/camera/mic/SemMultiMicManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->setEnabled(Z)V

    .line 3
    iput-boolean p1, p0, Lcom/sec/android/app/camera/audio/MultiMicController;->mIsMultiMicZoomFocusEnabled:Z

    if-eqz p1, :cond_0

    int-to-float p1, p2

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    .line 4
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/audio/MultiMicController;->setZoomValue(F)V

    :cond_0
    return-void
.end method

.method isMultiMicZoomFocusEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/audio/MultiMicController;->mIsMultiMicZoomFocusEnabled:Z

    return p0
.end method

.method prepare(IIII)V
    .locals 2

    const-string v0, "MultiMicController"

    const-string v1, "prepare"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/audio/MultiMicController;->initialize(IIII)V

    .line 3
    sget-object p1, Lu3/b;->f3:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/MultiMicController;->mManager:Lcom/samsung/android/camera/mic/SemMultiMicManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->setMode(I)Z

    :cond_0
    return-void
.end method

.method release()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/sec/android/app/camera/util/AudioUtil;->isMultiMicZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "MultiMicController"

    const-string v1, "release"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, v0}, Lcom/sec/android/app/camera/audio/MultiMicController;->enableZoomFocus(ZI)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/MultiMicController;->mManager:Lcom/samsung/android/camera/mic/SemMultiMicManager;

    invoke-virtual {p0}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->release()V

    return-void
.end method

.method setAudioFacing(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/MultiMicController;->mManager:Lcom/samsung/android/camera/mic/SemMultiMicManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/util/AudioUtil;->getMultiMicFacing(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->setSoundLocation(I)Z

    return-void
.end method

.method setMicLevel(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMicLevel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiMicController"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/MultiMicController;->mManager:Lcom/samsung/android/camera/mic/SemMultiMicManager;

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->setMicSensitivity(II)Z

    return-void
.end method

.method setMode(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/MultiMicController;->mManager:Lcom/samsung/android/camera/mic/SemMultiMicManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->setMode(I)Z

    return-void
.end method

.method setZoomValue(F)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/sec/android/app/camera/util/AudioUtil;->isMultiMicZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setZoomValue : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiMicController"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/MultiMicController;->mManager:Lcom/samsung/android/camera/mic/SemMultiMicManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->setAudioZoomLevel(F)V

    return-void
.end method

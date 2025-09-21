.class public Lcom/sec/android/app/camera/cropper/controller/MyFilterController;
.super Lcom/sec/android/app/camera/cropper/controller/CropController;
.source "MyFilterController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MyFilterController"


# instance fields
.field private mInitialCropRect:Landroid/graphics/Rect;

.field private mLayoutChangedListener:Landroid/view/View$OnLayoutChangeListener;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/widget/LinearLayout;Lcom/sec/android/app/camera/cropper/view/CropImageView;Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/camera/cropper/controller/CropController;-><init>(ILandroid/content/Context;Landroid/widget/LinearLayout;Lcom/sec/android/app/camera/cropper/view/CropImageView;Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/controller/MyFilterController;->mLayoutChangedListener:Landroid/view/View$OnLayoutChangeListener;

    const-string p0, "MyFilterController"

    const-string p1, "Create MyFilter controller."

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/cropper/controller/MyFilterController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/controller/MyFilterController;->isDeviceTablet()Z

    move-result p0

    return p0
.end method

.method private isDeviceTablet()Z
    .locals 1

    const-string p0, "ro.build.characteristics"

    .line 1
    invoke-static {p0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string/jumbo v0, "tablet"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateCropImageView(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/cropper/controller/MyFilterController$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/camera/cropper/controller/MyFilterController$1;-><init>(Lcom/sec/android/app/camera/cropper/controller/MyFilterController;Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/cropper/controller/MyFilterController;->mLayoutChangedListener:Landroid/view/View$OnLayoutChangeListener;

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    const-string v0, "MyFilterController"

    const-string v1, "cancel"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/controller/MyFilterController;->mInitialCropRect:Landroid/graphics/Rect;

    const-string v2, "cropCoordinate"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getOriginalImagePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imagePath"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;->onCancelCompleted(Landroid/content/Intent;)V

    return-void
.end method

.method public deInitialize()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/controller/MyFilterController;->isDeviceTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageViewLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/controller/MyFilterController;->mLayoutChangedListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/sec/android/app/camera/cropper/controller/MyFilterController;->mLayoutChangedListener:Landroid/view/View$OnLayoutChangeListener;

    const-string p0, "MyFilterController"

    const-string v0, "deInitialize: "

    .line 4
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public extractText()V
    .locals 0

    return-void
.end method

.method public initialize()V
    .locals 0

    return-void
.end method

.method public save()V
    .locals 3

    const-string v0, "MyFilterController"

    const-string v1, "save"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getOriginalCropRect()Landroid/graphics/Rect;

    move-result-object v1

    const-string v2, "cropCoordinate"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getOriginalImagePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imagePath"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;->onSaveCompleted(Landroid/content/Intent;)V

    return-void
.end method

.method public start(Landroid/content/Intent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    new-instance v1, Lcom/sec/android/app/camera/cropper/polygon/Rectangle;

    invoke-direct {v1}, Lcom/sec/android/app/camera/cropper/polygon/Rectangle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->setPolygon(Lcom/sec/android/app/camera/cropper/polygon/Polygon;)V

    const-string v0, "cropCoordinate"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/cropper/controller/MyFilterController;->mInitialCropRect:Landroid/graphics/Rect;

    :cond_0
    const/16 v0, 0x12c

    const-string v2, "minCropSize"

    .line 5
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 6
    invoke-virtual {p1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->setMinCropSize(I)V

    .line 8
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/cropper/controller/MyFilterController;->updateCropImageView(Landroid/graphics/Rect;)V

    return-void
.end method

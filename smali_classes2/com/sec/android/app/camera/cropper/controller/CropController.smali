.class public abstract Lcom/sec/android/app/camera/cropper/controller/CropController;
.super Ljava/lang/Object;
.source "CropController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/cropper/controller/CropController$ExtractTextEventListener;,
        Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;
    }
.end annotation


# instance fields
.field protected final mCropContext:Landroid/content/Context;

.field protected final mCropEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;

.field protected final mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

.field protected final mCropImageViewLayout:Landroid/widget/LinearLayout;

.field private final mCropMode:I

.field protected final mExtractTextEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$ExtractTextEventListener;


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/widget/LinearLayout;Lcom/sec/android/app/camera/cropper/view/CropImageView;Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropMode:I

    .line 10
    iput-object p2, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropContext:Landroid/content/Context;

    .line 11
    iput-object p3, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageViewLayout:Landroid/widget/LinearLayout;

    .line 12
    iput-object p4, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    .line 13
    iput-object p5, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mExtractTextEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$ExtractTextEventListener;

    return-void
.end method

.method protected constructor <init>(ILandroid/content/Context;Landroid/widget/LinearLayout;Lcom/sec/android/app/camera/cropper/view/CropImageView;Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;Lcom/sec/android/app/camera/cropper/controller/CropController$ExtractTextEventListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropMode:I

    .line 3
    iput-object p2, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropContext:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageViewLayout:Landroid/widget/LinearLayout;

    .line 5
    iput-object p4, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    .line 6
    iput-object p5, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;

    .line 7
    iput-object p6, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mExtractTextEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$ExtractTextEventListener;

    return-void
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract deInitialize()V
.end method

.method public abstract extractText()V
.end method

.method public getMode()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropMode:I

    return p0
.end method

.method public abstract initialize()V
.end method

.method public abstract save()V
.end method

.method public abstract start(Landroid/content/Intent;)V
.end method

.class Lcom/sec/android/app/camera/cropper/controller/DocumentScanController$3;
.super Ljava/lang/Object;
.source "DocumentScanController.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->updateVisionTextBitmap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController$3;->this$0:Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "mCropImageView.onLayoutChange() : left=["

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, "], top=["

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, "], right=["

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, "], bottom=["

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, "]"

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p7, "DocumentScanController"

    invoke-static {p7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController$3;->this$0:Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;

    iget-object p1, p1, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p8

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateVisionTextBitmap : Start["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p8, p9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p7, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "mCropImageView.onLayoutChange() : originalRect=["

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p7, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p2, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController$3;->this$0:Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;

    invoke-static {p2}, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->access$200(Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;)Landroid/graphics/Rect;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 8
    iget-object p2, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController$3;->this$0:Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;

    iget-object p2, p2, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p4, 0x0

    .line 9
    iget-object p5, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController$3;->this$0:Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;

    invoke-static {p5}, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->access$200(Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;)Landroid/graphics/Rect;

    move-result-object p5

    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result p5

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController$3;->this$0:Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;

    iget-object v0, v0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getOriginalImageOrientation()I

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_0

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController$3;->this$0:Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;

    iget-object v0, v0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    sub-int/2addr v0, p5

    if-lez v0, :cond_1

    .line 12
    iget-object p4, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController$3;->this$0:Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;

    iget-object p4, p4, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/sec/android/app/camera/cropper/R$dimen;->document_scan_top_preview_area:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 13
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController$3;->this$0:Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;

    iget-object v0, v0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/app/camera/cropper/R$dimen;->document_scan_layout_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr p5, v1

    div-int/lit8 p5, p5, 0x2

    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController$3;->this$0:Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;

    invoke-static {v1}, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->access$200(Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p5, v1

    sub-int/2addr p5, p4

    sub-int p4, p5, v0

    goto :goto_0

    .line 15
    :cond_0
    iget-object p5, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController$3;->this$0:Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;

    iget-object p5, p5, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p5}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr p5, v0

    if-lez p5, :cond_1

    .line 16
    iget-object p4, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController$3;->this$0:Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;

    iget-object p4, p4, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p5

    sub-int/2addr p4, p5

    div-int/lit8 p4, p4, 0x2

    .line 17
    :cond_1
    :goto_0
    iput p4, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 18
    iget-object p5, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController$3;->this$0:Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;

    iget-object p5, p5, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p5, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    iget-object p2, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController$3;->this$0:Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;

    iget-object p2, p2, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/android/app/camera/cropper/util/FeatureUtils;->isVisionTextSupported(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 20
    iget-object p2, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController$3;->this$0:Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;

    invoke-static {p2, p3, p4}, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->access$300(Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;II)V

    .line 21
    iget-object p2, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController$3;->this$0:Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;

    invoke-static {p2}, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->access$400(Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 22
    iget-object p2, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController$3;->this$0:Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;

    iget-object p3, p2, Lcom/sec/android/app/camera/cropper/controller/CropController;->mExtractTextEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$ExtractTextEventListener;

    iget-object p2, p2, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p4, p2

    invoke-interface {p3, p4}, Lcom/sec/android/app/camera/cropper/controller/CropController$ExtractTextEventListener;->onUpdatePosition(I)V

    .line 23
    iget-object p2, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController$3;->this$0:Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;

    iget-object p2, p2, Lcom/sec/android/app/camera/cropper/controller/CropController;->mExtractTextEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$ExtractTextEventListener;

    invoke-interface {p2}, Lcom/sec/android/app/camera/cropper/controller/CropController$ExtractTextEventListener;->onExtractTextStarted()V

    .line 24
    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController$3;->this$0:Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->access$500(Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;Landroid/graphics/Rect;)V

    .line 25
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updateVisionTextBitmap : End["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "] ["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p0, p8

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p7, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

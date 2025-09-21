.class Lcom/sec/android/app/camera/cropper/controller/MyFilterController$1;
.super Ljava/lang/Object;
.source "MyFilterController.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/cropper/controller/MyFilterController;->updateCropImageView(Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/cropper/controller/MyFilterController;

.field final synthetic val$initialRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/cropper/controller/MyFilterController;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/controller/MyFilterController$1;->this$0:Lcom/sec/android/app/camera/cropper/controller/MyFilterController;

    iput-object p2, p0, Lcom/sec/android/app/camera/cropper/controller/MyFilterController$1;->val$initialRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/controller/MyFilterController$1;->this$0:Lcom/sec/android/app/camera/cropper/controller/MyFilterController;

    invoke-static {p1}, Lcom/sec/android/app/camera/cropper/controller/MyFilterController;->access$000(Lcom/sec/android/app/camera/cropper/controller/MyFilterController;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/controller/MyFilterController$1;->this$0:Lcom/sec/android/app/camera/cropper/controller/MyFilterController;

    iget-object p1, p1, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "updateCropImageView : Start["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, "]"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p5, "MyFilterController"

    invoke-static {p5, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance p3, Landroid/util/Size;

    iget-object p6, p0, Lcom/sec/android/app/camera/cropper/controller/MyFilterController$1;->this$0:Lcom/sec/android/app/camera/cropper/controller/MyFilterController;

    iget-object p6, p6, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p6

    iget-object p7, p0, Lcom/sec/android/app/camera/cropper/controller/MyFilterController$1;->this$0:Lcom/sec/android/app/camera/cropper/controller/MyFilterController;

    iget-object p7, p7, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p7}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p7

    invoke-direct {p3, p6, p7}, Landroid/util/Size;-><init>(II)V

    .line 6
    iget-object p6, p0, Lcom/sec/android/app/camera/cropper/controller/MyFilterController$1;->this$0:Lcom/sec/android/app/camera/cropper/controller/MyFilterController;

    iget-object p6, p6, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {p6, p3}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->drawBitmap(Landroid/util/Size;)V

    .line 7
    iget-object p3, p0, Lcom/sec/android/app/camera/cropper/controller/MyFilterController$1;->this$0:Lcom/sec/android/app/camera/cropper/controller/MyFilterController;

    iget-object p3, p3, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/controller/MyFilterController$1;->val$initialRect:Landroid/graphics/Rect;

    invoke-virtual {p3, p0}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->setInitialPolygonPoint(Landroid/graphics/Rect;)V

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p6

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updateCropImageView : End["

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "] ["

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p6, p1

    invoke-virtual {p0, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.class Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LeftButtonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->startQuickViewTranslationAnimation(ILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView$4;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    const-string p0, "Update - QuickViewThumbnail"

    const/4 p1, 0x0

    .line 2
    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;Z)V

    const-string p0, "UpdateQuickViewThumbnail"

    .line 3
    invoke-static {p0, p1}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    return-void
.end method

.class Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView$3;
.super Ljava/lang/Object;
.source "ProLiteSliderContainerView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->initSliderBackground(Lcom/sec/android/app/camera/interfaces/AspectRatio;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;

.field final synthetic val$aspectRatio:Lcom/sec/android/app/camera/interfaces/AspectRatio;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;Lcom/sec/android/app/camera/interfaces/AspectRatio;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView$3;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView$3;->val$aspectRatio:Lcom/sec/android/app/camera/interfaces/AspectRatio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView$3;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView$3;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView$3;->val$aspectRatio:Lcom/sec/android/app/camera/interfaces/AspectRatio;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->updateSliderBackground(Lcom/sec/android/app/camera/interfaces/AspectRatio;)V

    return-void
.end method

.class Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView$2;
.super Ljava/lang/Object;
.source "TimerView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->updateIntervalProgressDotPosition(ILandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;

.field final synthetic val$intervalTotalCount:I

.field final synthetic val$previewRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;ILandroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView$2;->this$0:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;

    iput p2, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView$2;->val$intervalTotalCount:I

    iput-object p3, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView$2;->val$previewRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView$2;->this$0:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView$2;->this$0:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;

    iget v1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView$2;->val$intervalTotalCount:I

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView$2;->val$previewRect:Landroid/graphics/Rect;

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->l(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;ILandroid/graphics/Rect;)V

    return-void
.end method

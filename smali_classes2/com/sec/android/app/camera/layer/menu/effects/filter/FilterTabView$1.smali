.class Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$1;
.super Ljava/lang/Object;
.source "FilterTabView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->updateChildBackground(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

.field final synthetic val$blackAreaBottomPosition:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$1;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    iput p2, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$1;->val$blackAreaBottomPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$1;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$1;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    iget v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$1;->val$blackAreaBottomPosition:I

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->A(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;I)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$1;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->y(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;)V

    return-void
.end method

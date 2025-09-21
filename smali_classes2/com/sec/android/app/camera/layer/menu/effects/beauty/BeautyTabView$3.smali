.class Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView$3;
.super Ljava/lang/Object;
.source "BeautyTabView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->updateChildBackground(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;

.field final synthetic val$blackAreaBottomPosition:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView$3;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;

    iput p2, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView$3;->val$blackAreaBottomPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView$3;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView$3;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;

    iget p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView$3;->val$blackAreaBottomPosition:I

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->i(Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;I)V

    return-void
.end method

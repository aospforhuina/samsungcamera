.class Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView$1;
.super Ljava/lang/Object;
.source "IndicatorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->refreshLayout(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;

.field final synthetic val$hdrPlusVisibility:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView$1;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;

    iput p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView$1;->val$hdrPlusVisibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView$1;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;

    invoke-static {v0}, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->h(Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;)Lo5/u;

    move-result-object v0

    iget-object v0, v0, Lo5/u;->c:Landroid/widget/TextView;

    iget p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView$1;->val$hdrPlusVisibility:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

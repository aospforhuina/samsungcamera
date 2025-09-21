.class public final synthetic Lcom/sec/android/app/camera/layer/previewanimation/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/previewanimation/j;->a:Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/j;->a:Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->d(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;Ljava/lang/Boolean;)V

    return-void
.end method

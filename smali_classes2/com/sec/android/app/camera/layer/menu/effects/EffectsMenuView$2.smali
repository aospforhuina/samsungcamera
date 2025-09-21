.class Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView$2;
.super Ljava/lang/Object;
.source "EffectsMenuView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView$2;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView$2;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->t(Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;)V

    return-void
.end method

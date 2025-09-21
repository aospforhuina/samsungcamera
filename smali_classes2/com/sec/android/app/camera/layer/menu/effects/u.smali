.class public final synthetic Lcom/sec/android/app/camera/layer/menu/effects/u;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;

.field public final synthetic b:I

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/u;->a:Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;

    iput p2, p0, Lcom/sec/android/app/camera/layer/menu/effects/u;->b:I

    iput-boolean p3, p0, Lcom/sec/android/app/camera/layer/menu/effects/u;->c:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/u;->a:Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;

    iget v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/u;->b:I

    iget-boolean p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/u;->c:Z

    check-cast p1, Lcom/google/android/material/tabs/TabLayout$g;

    invoke-static {v0, v1, p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->l(Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;IZLcom/google/android/material/tabs/TabLayout$g;)V

    return-void
.end method

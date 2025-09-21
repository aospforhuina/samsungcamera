.class public final synthetic Lcom/sec/android/app/camera/engine/callback/a0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/callback/MultiViewInfoCallback$MultiViewInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/callback/MultiViewInfoCallback$MultiViewInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/callback/a0;->a:Lcom/samsung/android/camera/core2/callback/MultiViewInfoCallback$MultiViewInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/callback/a0;->a:Lcom/samsung/android/camera/core2/callback/MultiViewInfoCallback$MultiViewInfo;

    check-cast p1, Lcom/sec/android/app/camera/interfaces/CallbackManager$MultiViewInfoListener;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/callback/MultiViewInfoCallback;->b(Lcom/samsung/android/camera/core2/callback/MultiViewInfoCallback$MultiViewInfo;Lcom/sec/android/app/camera/interfaces/CallbackManager$MultiViewInfoListener;)V

    return-void
.end method

.class public final synthetic Lcom/samsung/android/camera/core2/processor/work/worker/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/work/worker/h;->a:Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/h;->a:Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;

    check-cast p1, Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->f(Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;Landroid/net/Uri;)V

    return-void
.end method

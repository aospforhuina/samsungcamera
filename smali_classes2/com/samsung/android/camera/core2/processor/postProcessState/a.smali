.class public final synthetic Lcom/samsung/android/camera/core2/processor/postProcessState/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/postProcessState/a;->a:Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;

    iput-wide p2, p0, Lcom/samsung/android/camera/core2/processor/postProcessState/a;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/postProcessState/a;->a:Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;

    iget-wide v1, p0, Lcom/samsung/android/camera/core2/processor/postProcessState/a;->b:J

    invoke-static {v0, v1, v2}, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;->c(Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;J)V

    return-void
.end method

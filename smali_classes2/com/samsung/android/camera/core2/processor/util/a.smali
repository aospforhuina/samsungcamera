.class public final synthetic Lcom/samsung/android/camera/core2/processor/util/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/util/a;->a:Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/util/a;->a:Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->g(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;)V

    return-void
.end method

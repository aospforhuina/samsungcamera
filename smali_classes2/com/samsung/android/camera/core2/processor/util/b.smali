.class public final synthetic Lcom/samsung/android/camera/core2/processor/util/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/util/b;->a:Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;

    iput p2, p0, Lcom/samsung/android/camera/core2/processor/util/b;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/b;->a:Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;

    iget p0, p0, Lcom/samsung/android/camera/core2/processor/util/b;->b:I

    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->c(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;I)V

    return-void
.end method

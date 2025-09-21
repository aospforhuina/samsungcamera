.class public final synthetic Lcom/samsung/android/camera/core2/processor/util/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic f:Ljava/util/List;

.field public final synthetic g:J


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;ILjava/lang/String;ILjava/util/List;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/util/c;->a:Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;

    iput p2, p0, Lcom/samsung/android/camera/core2/processor/util/c;->b:I

    iput-object p3, p0, Lcom/samsung/android/camera/core2/processor/util/c;->c:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/camera/core2/processor/util/c;->d:I

    iput-object p5, p0, Lcom/samsung/android/camera/core2/processor/util/c;->f:Ljava/util/List;

    iput-wide p6, p0, Lcom/samsung/android/camera/core2/processor/util/c;->g:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/c;->a:Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;

    iget v1, p0, Lcom/samsung/android/camera/core2/processor/util/c;->b:I

    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/util/c;->c:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/camera/core2/processor/util/c;->d:I

    iget-object v4, p0, Lcom/samsung/android/camera/core2/processor/util/c;->f:Ljava/util/List;

    iget-wide v5, p0, Lcom/samsung/android/camera/core2/processor/util/c;->g:J

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->h(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;ILjava/lang/String;ILjava/util/List;J)V

    return-void
.end method

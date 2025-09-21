.class public Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;
.super Ljava/lang/Object;
.source "Sequencer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/util/Sequencer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SequenceInfo"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:Lcom/samsung/android/camera/core2/util/Sequencer$SequenceBundle;

.field private final d:Lcom/samsung/android/camera/core2/util/Sequencer$Step;


# direct methods
.method private constructor <init>(Ljava/lang/String;JLcom/samsung/android/camera/core2/util/Sequencer$SequenceBundle;Lcom/samsung/android/camera/core2/util/Sequencer$Step;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;->a:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;->b:J

    .line 4
    iput-object p4, p0, Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;->c:Lcom/samsung/android/camera/core2/util/Sequencer$SequenceBundle;

    .line 5
    iput-object p5, p0, Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;->d:Lcom/samsung/android/camera/core2/util/Sequencer$Step;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JLcom/samsung/android/camera/core2/util/Sequencer$SequenceBundle;Lcom/samsung/android/camera/core2/util/Sequencer$Step;Lcom/samsung/android/camera/core2/util/z2;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;-><init>(Ljava/lang/String;JLcom/samsung/android/camera/core2/util/Sequencer$SequenceBundle;Lcom/samsung/android/camera/core2/util/Sequencer$Step;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/samsung/android/camera/core2/util/Sequencer$SequenceBundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;->c:Lcom/samsung/android/camera/core2/util/Sequencer$SequenceBundle;

    return-object p0
.end method

.method public b()Lcom/samsung/android/camera/core2/util/Sequencer$Step;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;->d:Lcom/samsung/android/camera/core2/util/Sequencer$Step;

    return-object p0
.end method

.class final enum Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer$SequenceCondition;
.super Ljava/lang/Enum;
.source "ProcessCallbackSequencer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SequenceCondition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer$SequenceCondition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer$SequenceCondition;

.field public static final enum DRAFT_IMAGE_SAVED:Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer$SequenceCondition;

.field public static final enum REQUEST_COLLECTION_COMPLETED:Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer$SequenceCondition;

.field public static final enum REQUEST_COLLECTION_STOPPED:Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer$SequenceCondition;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer$SequenceCondition;

    const-string v1, "DRAFT_IMAGE_SAVED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer$SequenceCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer$SequenceCondition;->DRAFT_IMAGE_SAVED:Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer$SequenceCondition;

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer$SequenceCondition;

    const-string v3, "REQUEST_COLLECTION_COMPLETED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer$SequenceCondition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer$SequenceCondition;->REQUEST_COLLECTION_COMPLETED:Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer$SequenceCondition;

    .line 3
    new-instance v3, Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer$SequenceCondition;

    const-string v5, "REQUEST_COLLECTION_STOPPED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer$SequenceCondition;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer$SequenceCondition;->REQUEST_COLLECTION_STOPPED:Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer$SequenceCondition;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer$SequenceCondition;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer$SequenceCondition;->$VALUES:[Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer$SequenceCondition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer$SequenceCondition;
    .locals 1

    const-class v0, Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer$SequenceCondition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer$SequenceCondition;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer$SequenceCondition;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer$SequenceCondition;->$VALUES:[Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer$SequenceCondition;

    invoke-virtual {v0}, [Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer$SequenceCondition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer$SequenceCondition;

    return-object v0
.end method

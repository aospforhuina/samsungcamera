.class public final enum Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;
.super Ljava/lang/Enum;
.source "PrivateMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/PrivateMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompositionGuideMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;

.field public static final enum c:Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;

.field public static final enum d:Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;

.field private static final synthetic f:[Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;

    const-string v1, "MODE_NONE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;->b:Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;

    const-string v3, "MODE_LITE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;->c:Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;

    .line 3
    new-instance v3, Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;

    const-string v5, "MODE_NORMAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;->d:Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;->f:[Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;
    .locals 1

    const-class v0, Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;->f:[Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;

    invoke-virtual {v0}, [Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;->a:I

    return p0
.end method

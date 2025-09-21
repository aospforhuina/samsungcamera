.class public final enum Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;
.super Ljava/lang/Enum;
.source "PrivateMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/PrivateMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LabsCaptureMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;

.field public static final enum c:Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;

.field public static final enum d:Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;

.field private static final synthetic f:[Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;

    const-string v1, "MODE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;->b:Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;

    const-string v3, "MODE_STAR_EFFECT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;->c:Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;

    .line 3
    new-instance v3, Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;

    const-string v5, "MODE_SMART_SCAN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;->d:Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;->f:[Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;

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
    iput p3, p0, Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;
    .locals 1

    const-class v0, Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;->f:[Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;

    invoke-virtual {v0}, [Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;->a:I

    return p0
.end method

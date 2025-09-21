.class public final enum Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedTouchEvType;
.super Ljava/lang/Enum;
.source "ShootingModeFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SupportedTouchEvType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedTouchEvType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedTouchEvType;

.field public static final enum NORMAL:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedTouchEvType;

.field public static final enum NOT_SUPPORTED:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedTouchEvType;

.field public static final enum PREVIEW_ONLY:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedTouchEvType;

.field public static final enum RECORDING_ONLY:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedTouchEvType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedTouchEvType;

    const-string v1, "NOT_SUPPORTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedTouchEvType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedTouchEvType;->NOT_SUPPORTED:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedTouchEvType;

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedTouchEvType;

    const-string v3, "PREVIEW_ONLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedTouchEvType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedTouchEvType;->PREVIEW_ONLY:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedTouchEvType;

    .line 3
    new-instance v3, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedTouchEvType;

    const-string v5, "RECORDING_ONLY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedTouchEvType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedTouchEvType;->RECORDING_ONLY:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedTouchEvType;

    .line 4
    new-instance v5, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedTouchEvType;

    const-string v7, "NORMAL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedTouchEvType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedTouchEvType;->NORMAL:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedTouchEvType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedTouchEvType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedTouchEvType;->$VALUES:[Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedTouchEvType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedTouchEvType;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedTouchEvType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedTouchEvType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedTouchEvType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedTouchEvType;->$VALUES:[Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedTouchEvType;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedTouchEvType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedTouchEvType;

    return-object v0
.end method

.class public final enum Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;
.super Ljava/lang/Enum;
.source "ZoomManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/ZoomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ZoomCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;

.field public static final enum FOV:Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;

.field public static final enum FRONT_LENS_AND_LEVEL:Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;

.field public static final enum HYPER_LAPSE:Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;

.field public static final enum LENS:Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;

.field public static final enum LENS_AND_LEVEL:Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;

.field public static final enum LENS_NAME_AND_LEVEL:Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;

.field public static final enum LEVEL:Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;

.field public static final enum NOT_SUPPORT:Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;

.field public static final enum SUPER_STEADY:Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;

    const-string v1, "NOT_SUPPORT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;->NOT_SUPPORT:Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;

    const-string v3, "LEVEL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;->LEVEL:Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;

    .line 3
    new-instance v3, Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;

    const-string v5, "FOV"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;->FOV:Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;

    .line 4
    new-instance v5, Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;

    const-string v7, "LENS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;->LENS:Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;

    .line 5
    new-instance v7, Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;

    const-string v9, "LENS_AND_LEVEL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;->LENS_AND_LEVEL:Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;

    .line 6
    new-instance v9, Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;

    const-string v11, "LENS_NAME_AND_LEVEL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;->LENS_NAME_AND_LEVEL:Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;

    .line 7
    new-instance v11, Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;

    const-string v13, "HYPER_LAPSE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;->HYPER_LAPSE:Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;

    .line 8
    new-instance v13, Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;

    const-string v15, "SUPER_STEADY"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;->SUPER_STEADY:Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;

    .line 9
    new-instance v15, Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;

    const-string v14, "FRONT_LENS_AND_LEVEL"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;->FRONT_LENS_AND_LEVEL:Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 10
    sput-object v14, Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;->$VALUES:[Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;->$VALUES:[Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;

    return-object v0
.end method

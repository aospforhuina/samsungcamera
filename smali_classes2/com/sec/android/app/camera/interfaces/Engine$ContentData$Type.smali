.class public final enum Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;
.super Ljava/lang/Enum;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/Engine$ContentData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;

.field public static final enum IMAGE:Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;

.field public static final enum VIDEO:Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;

    const-string v1, "IMAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;->IMAGE:Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;

    const-string v3, "VIDEO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;->VIDEO:Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;->$VALUES:[Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;->$VALUES:[Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;

    return-object v0
.end method

.class final enum La0/h$g;
.super Ljava/lang/Enum;
.source "DecodeJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La0/h$g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:La0/h$g;

.field public static final enum b:La0/h$g;

.field public static final enum c:La0/h$g;

.field private static final synthetic d:[La0/h$g;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, La0/h$g;

    const-string v1, "INITIALIZE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La0/h$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, La0/h$g;->a:La0/h$g;

    .line 2
    new-instance v1, La0/h$g;

    const-string v3, "SWITCH_TO_SOURCE_SERVICE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, La0/h$g;-><init>(Ljava/lang/String;I)V

    sput-object v1, La0/h$g;->b:La0/h$g;

    .line 3
    new-instance v3, La0/h$g;

    const-string v5, "DECODE_DATA"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, La0/h$g;-><init>(Ljava/lang/String;I)V

    sput-object v3, La0/h$g;->c:La0/h$g;

    const/4 v5, 0x3

    new-array v5, v5, [La0/h$g;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, La0/h$g;->d:[La0/h$g;

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

.method public static valueOf(Ljava/lang/String;)La0/h$g;
    .locals 1

    const-class v0, La0/h$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La0/h$g;

    return-object p0
.end method

.method public static values()[La0/h$g;
    .locals 1

    sget-object v0, La0/h$g;->d:[La0/h$g;

    invoke-virtual {v0}, [La0/h$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La0/h$g;

    return-object v0
.end method

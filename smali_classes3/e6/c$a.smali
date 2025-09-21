.class final enum Le6/c$a;
.super Ljava/lang/Enum;
.source "DiagMonSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le6/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le6/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le6/c$a;

.field public static final enum b:Le6/c$a;

.field public static final enum c:Le6/c$a;

.field private static final synthetic d:[Le6/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Le6/c$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le6/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le6/c$a;->a:Le6/c$a;

    .line 2
    new-instance v1, Le6/c$a;

    const-string v3, "DEFAULT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Le6/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le6/c$a;->b:Le6/c$a;

    .line 3
    new-instance v3, Le6/c$a;

    const-string v5, "CUSTOM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Le6/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Le6/c$a;->c:Le6/c$a;

    const/4 v5, 0x3

    new-array v5, v5, [Le6/c$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Le6/c$a;->d:[Le6/c$a;

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

.method public static valueOf(Ljava/lang/String;)Le6/c$a;
    .locals 1

    const-class v0, Le6/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le6/c$a;

    return-object p0
.end method

.method public static values()[Le6/c$a;
    .locals 1

    sget-object v0, Le6/c$a;->d:[Le6/c$a;

    invoke-virtual {v0}, [Le6/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le6/c$a;

    return-object v0
.end method

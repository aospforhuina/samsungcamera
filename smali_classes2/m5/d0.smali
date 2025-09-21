.class public Lm5/d0;
.super Ljava/lang/Object;
.source "CommandBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm5/d0$d;,
        Lm5/d0$c;
    }
.end annotation


# static fields
.field private static final a:Lm5/q0;

.field private static final b:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/camera/interfaces/CommandId;",
            "Lm5/d0$c;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/camera/interfaces/CommandId;",
            "Lm5/d0$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v1, Lm5/h0;

    invoke-direct {v1}, Lm5/h0;-><init>()V

    sput-object v1, Lm5/d0;->a:Lm5/q0;

    .line 2
    new-instance v1, Lm5/d0$a;

    invoke-direct {v1, v0}, Lm5/d0$a;-><init>(Ljava/lang/Class;)V

    sput-object v1, Lm5/d0;->b:Ljava/util/EnumMap;

    .line 3
    new-instance v1, Lm5/d0$b;

    invoke-direct {v1, v0}, Lm5/d0$b;-><init>(Ljava/lang/Class;)V

    sput-object v1, Lm5/d0;->c:Ljava/util/EnumMap;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/interfaces/CommandId;)Ljava/lang/UnsupportedOperationException;
    .locals 0

    invoke-static {p0}, Lm5/d0;->g(Lcom/sec/android/app/camera/interfaces/CommandId;)Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/interfaces/CommandInterface;Lcom/sec/android/app/camera/interfaces/CommandId;)Lm5/q0;
    .locals 0

    invoke-static {p0, p1}, Lm5/d0;->f(Lcom/sec/android/app/camera/interfaces/CommandInterface;Lcom/sec/android/app/camera/interfaces/CommandId;)Lm5/q0;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic c()Lm5/q0;
    .locals 1

    sget-object v0, Lm5/d0;->a:Lm5/q0;

    return-object v0
.end method

.method public static d(Lcom/sec/android/app/camera/interfaces/CommandId;Lcom/sec/android/app/camera/interfaces/CommandInterface;)Lm5/q0;
    .locals 2

    .line 1
    sget-object v0, Lm5/d0;->b:Ljava/util/EnumMap;

    sget-object v1, Lm5/g;->a:Lm5/g;

    invoke-virtual {v0, p0, v1}, Ljava/util/EnumMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm5/d0$c;

    .line 2
    invoke-interface {v0, p1, p0}, Lm5/d0$c;->a(Lcom/sec/android/app/camera/interfaces/CommandInterface;Lcom/sec/android/app/camera/interfaces/CommandId;)Lm5/q0;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lm5/f;

    invoke-direct {v0, p0}, Lm5/f;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm5/q0;

    return-object p0
.end method

.method public static e(Lcom/sec/android/app/camera/interfaces/CommandId;ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lm5/q0;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 1
    :cond_0
    sget-object v1, Lm5/d0;->c:Ljava/util/EnumMap;

    invoke-virtual {v1, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm5/d0$d;

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {v1, p2, p0, p1}, Lm5/d0$d;->a(Lcom/sec/android/app/camera/interfaces/CommandInterface;Lcom/sec/android/app/camera/interfaces/CommandId;I)Lm5/q0;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method private static synthetic f(Lcom/sec/android/app/camera/interfaces/CommandInterface;Lcom/sec/android/app/camera/interfaces/CommandId;)Lm5/q0;
    .locals 0

    sget-object p0, Lm5/d0;->a:Lm5/q0;

    return-object p0
.end method

.method private static synthetic g(Lcom/sec/android/app/camera/interfaces/CommandId;)Ljava/lang/UnsupportedOperationException;
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildCommand : No menu command for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.class public final Ln1/a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Lz0/a$d;


# static fields
.field public static final k:Ln1/a;


# instance fields
.field private final b:Z

.field private final c:Z

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Z

.field private final i:Ljava/lang/Long;

.field private final j:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v11, Ln1/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Ln1/a;-><init>(ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;Ln1/g;)V

    sput-object v11, Ln1/a;->k:Ln1/a;

    return-void
.end method

.method synthetic constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;Ln1/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ln1/a;->b:Z

    iput-boolean p1, p0, Ln1/a;->c:Z

    const/4 p2, 0x0

    iput-object p2, p0, Ln1/a;->d:Ljava/lang/String;

    iput-boolean p1, p0, Ln1/a;->e:Z

    iput-boolean p1, p0, Ln1/a;->h:Z

    iput-object p2, p0, Ln1/a;->f:Ljava/lang/String;

    iput-object p2, p0, Ln1/a;->g:Ljava/lang/String;

    iput-object p2, p0, Ln1/a;->i:Ljava/lang/Long;

    iput-object p2, p0, Ln1/a;->j:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of p0, p1, Ln1/a;

    const/4 v1, 0x0

    if-nez p0, :cond_1

    return v1

    .line 2
    :cond_1
    check-cast p1, Ln1/a;

    .line 3
    iget-boolean p0, p1, Ln1/a;->b:Z

    const/4 p0, 0x0

    .line 4
    invoke-static {p0, p0}, Lb1/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-static {p0, p0}, Lb1/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-static {p0, p0}, Lb1/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    invoke-static {p0, p0}, Lb1/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    invoke-static {p0, p0}, Lb1/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-object v2, p0, v1

    const/4 v1, 0x3

    aput-object v0, p0, v1

    const/4 v1, 0x4

    aput-object v0, p0, v1

    const/4 v0, 0x5

    aput-object v2, p0, v0

    const/4 v0, 0x6

    aput-object v2, p0, v0

    const/4 v0, 0x7

    aput-object v2, p0, v0

    const/16 v0, 0x8

    aput-object v2, p0, v0

    .line 2
    invoke-static {p0}, Lb1/o;->b([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

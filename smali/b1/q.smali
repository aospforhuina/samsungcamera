.class public final Lb1/q;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.0.0"


# static fields
.field private static b:Lb1/q;

.field private static final c:Lb1/r;


# instance fields
.field private a:Lb1/r;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, Lb1/r;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lb1/r;-><init>(IZZII)V

    sput-object v6, Lb1/q;->c:Lb1/r;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized b()Lb1/q;
    .locals 2

    const-class v0, Lb1/q;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lb1/q;->b:Lb1/q;

    if-nez v1, :cond_0

    new-instance v1, Lb1/q;

    invoke-direct {v1}, Lb1/q;-><init>()V

    sput-object v1, Lb1/q;->b:Lb1/q;

    :cond_0
    sget-object v1, Lb1/q;->b:Lb1/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a()Lb1/r;
    .locals 0

    iget-object p0, p0, Lb1/q;->a:Lb1/r;

    return-object p0
.end method

.method public final declared-synchronized c(Lb1/r;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    sget-object p1, Lb1/q;->c:Lb1/r;

    iput-object p1, p0, Lb1/q;->a:Lb1/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lb1/q;->a:Lb1/r;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lb1/r;->i()I

    move-result v0

    invoke-virtual {p1}, Lb1/r;->i()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :goto_0
    :try_start_2
    iput-object p1, p0, Lb1/q;->a:Lb1/r;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

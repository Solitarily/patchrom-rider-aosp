.class public final Landroid/view/KeyCharacterMap$FallbackAction;
.super Ljava/lang/Object;
.source "KeyCharacterMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/KeyCharacterMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FallbackAction"
.end annotation


# static fields
.field private static final MAX_RECYCLED:I = 0xa

.field private static sRecycleBin:Landroid/view/KeyCharacterMap$FallbackAction;

.field private static final sRecycleLock:Ljava/lang/Object;

.field private static sRecycledCount:I


# instance fields
.field public keyCode:I

.field public metaState:I

.field private next:Landroid/view/KeyCharacterMap$FallbackAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 749
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 759
    return-void
.end method

.method public static obtain()Landroid/view/KeyCharacterMap$FallbackAction;
    .locals 3

    .prologue
    .line 763
    sget-object v2, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 764
    :try_start_0
    sget-object v1, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleBin:Landroid/view/KeyCharacterMap$FallbackAction;

    if-nez v1, :cond_0

    .line 765
    new-instance v0, Landroid/view/KeyCharacterMap$FallbackAction;

    invoke-direct {v0}, Landroid/view/KeyCharacterMap$FallbackAction;-><init>()V

    .line 772
    .local v0, target:Landroid/view/KeyCharacterMap$FallbackAction;
    :goto_0
    monitor-exit v2

    .line 773
    return-object v0

    .line 767
    .end local v0           #target:Landroid/view/KeyCharacterMap$FallbackAction;
    :cond_0
    sget-object v0, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleBin:Landroid/view/KeyCharacterMap$FallbackAction;

    .line 768
    .restart local v0       #target:Landroid/view/KeyCharacterMap$FallbackAction;
    iget-object v1, v0, Landroid/view/KeyCharacterMap$FallbackAction;->next:Landroid/view/KeyCharacterMap$FallbackAction;

    sput-object v1, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleBin:Landroid/view/KeyCharacterMap$FallbackAction;

    .line 769
    sget v1, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycledCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycledCount:I

    .line 770
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/KeyCharacterMap$FallbackAction;->next:Landroid/view/KeyCharacterMap$FallbackAction;

    goto :goto_0

    .line 772
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public recycle()V
    .locals 3

    .prologue
    .line 777
    sget-object v1, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 778
    :try_start_0
    sget v0, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycledCount:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 779
    sget-object v0, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleBin:Landroid/view/KeyCharacterMap$FallbackAction;

    iput-object v0, p0, Landroid/view/KeyCharacterMap$FallbackAction;->next:Landroid/view/KeyCharacterMap$FallbackAction;

    .line 780
    sput-object p0, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleBin:Landroid/view/KeyCharacterMap$FallbackAction;

    .line 781
    sget v0, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycledCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycledCount:I

    .line 785
    :goto_0
    monitor-exit v1

    .line 786
    return-void

    .line 783
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/KeyCharacterMap$FallbackAction;->next:Landroid/view/KeyCharacterMap$FallbackAction;

    goto :goto_0

    .line 785
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

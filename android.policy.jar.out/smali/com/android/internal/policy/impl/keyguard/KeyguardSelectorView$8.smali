.class Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$8;
.super Ljava/lang/Object;
.source "KeyguardSelectorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->toastMessage(Landroid/widget/TextView;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

.field final synthetic val$oldColors:Landroid/content/res/ColorStateList;

.field final synthetic val$oldText:Ljava/lang/String;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;Landroid/widget/TextView;Ljava/lang/String;Landroid/content/res/ColorStateList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 541
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$8;->val$textView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$8;->val$oldText:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$8;->val$oldColors:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 543
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$8;->val$textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$8;->val$oldText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$8;->val$textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$8;->val$oldColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 545
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$8;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 546
    return-void
.end method

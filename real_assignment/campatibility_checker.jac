import from byllm { Model }
glob llm = Model(model_name="gemini/gemini-2.0-flash");

enum Compatibility {
    PERFECT_MATCH,
    GOOD_MATCH,
    NEEDS_WORK,
    NOT_COMPATIBLE
}

"""
Ask the LLM to judge compatibility between two names
"""
def check_compatibility(name1: str, name2: str) -> Compatibility by llm();

with entry {
    my_name = "Leon";              
    partner_name = "Alice";        
    result = check_compatibility(my_name, partner_name);
    print(f"Compatibility between {my_name} and {partner_name}: {result}");
}
